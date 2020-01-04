import React, {Component} from 'react';

import config from '../config'


import "./ActionPanel.css"


const WAIT_INTERVAL = 2000;

class ActionPanel extends Component {
    constructor(props) {
        super(props);
        this.toggleCamera = this.toggleCamera.bind(this);
        this.reload_img = this.reload_img.bind(this);
        this.sendCommand = this.sendCommand.bind(this);
        this.toggleExpand = this.toggleExpand.bind(this);
        this.reconnect = this.reconnect.bind(this);
        this.installCode = this.installCode.bind(this);
        this.resetPc = this.resetPc.bind(this);
        this.run = this.run.bind(this);
        this.halt = this.halt.bind(this);
        this.step = this.step.bind(this);
        this.updateRunDelay = this.updateRunDelay.bind(this);
        this.setRunSlow = this.setRunSlow.bind(this);
        this.evalBreakpoint = this.evalBreakpoint.bind(this);
        this.state = {
            connected: false,
            expanded: false,
            camOn: false,
            runDelay: 5000,
            runSlow: false,
            breakpoint: '',
            breakpointFunc: () => false
        };
    }

    sendCommand(command, onResult) {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/command", {
            method: "post",
            body: command
        }).then(result => {
                if (onResult) {
                    onResult(result)
                }
            }
        );
    }

    updateRunDelay() {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/runDelay", {
            method: "post",
            body: "" + this.state.runDelay
        }).then(result => {

            }
        );
    }

    readRunDelay() {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/runDelay", {
            method: "get"
        }).then(result => {
                result.text().then(txt => this.setState({runDelay: txt}));
            }
        );
    }

    reload_img() {
        var mjpeg_img = document.getElementById("mjpeg_dest");
        if (this.state.camOn) {
            mjpeg_img.src = "http://" + config.host + ":80/cam_pic.php?time=" + new Date().getTime();
            //mjpeg_img.src = "http://128.97.43.214/mjpg/video.mjpg?resolution=352x288&time=" + new Date().getTime();
        } else {
            mjpeg_img.src = null;
        }
    }

    error_img() {
        setTimeout(this.reload_img, 100);
    }

    toggleCamera() {
        var camOn = !this.state.camOn;
        this.setState({
            camOn: camOn
        }, () => {
            if (this.state.camOn) {
                var mjpeg_img = document.getElementById("mjpeg_dest");
                mjpeg_img.onload = this.reload_img;
                mjpeg_img.onerror = this.error_img;
                this.reload_img();
            }
        });
    }

    toggleExpand() {
        this.setState({
            expanded: !this.state.expanded
        })
    }

    reconnect() {
        this.sendCommand("reconnect", (result) => {
            this.setState({connected: result.status == 200})
        });
    }

    installCode() {
        this.sendCommand("install", () => {
            this.props.onInstalled();
            this.props.updateVMState()
        })
    }

    resetPc() {
        this.sendCommand("initPc")
    }

    run() {
        this.sendCommand("run")
    }

    halt() {
        this.sendCommand("halt", () => {
            this.setState({runSlow: false})
        })
    }

    evalBreakpoint() {
        try {
            return (() => eval(this.state.breakpoint)).call(this.props.vmState)
        } catch (e) {
            console.log(e)
            return false;
        }
    }

    step() {
        this.sendCommand("step", () => {
            this.props.updateVMState()
            if (!this.evalBreakpoint() && this.state.runSlow) {
                setTimeout(this.step, 10);
            }
        })
    }

    setRunSlow(e) {
        this.setState({runSlow: e.target.checked})
    }

    render() {
        const Checkbox = props => (
            <input type="checkbox" {...props} />
        )


        return (
            <div id="actionpanel">
                <button onClick={this.reconnect}>Reconnect</button>
                <br/>
                <button onClick={this.installCode}>Install Code</button>
                <br/>
                <button onClick={this.resetPc}>Reset program counter</button>
                <br/>
                <button onClick={this.run}>Run</button>
                <br/>
                <button onClick={this.halt}>Halt</button>
                <br/>
                <input value={this.state.runDelay} type="number"
                    //onChange={this.updateRunDelay.bind(this)}
                       onChange={event => this.setState({runDelay: event.target.value.replace(/\D/, '')})}
                       onBlur={event => this.updateRunDelay()}
                />
                <hr/>
                Run with VM
                <br/>
                <button onClick={this.step}>Stepwise</button>
                <br/>
                Keep running<Checkbox checked={this.state.runSlow} onChange={this.setRunSlow}/>
                <br/>

                <br/>
                <br/>
                breakpoint expr:
                <br/>
                <input value={this.state.breakpoint} onChange={event => this.setState({
                    breakpoint: event.target.value,
                    breakpointFunc: (event.target.value.trim() === '') ? () => false : () => eval(event.target.value)
                })}/>
                <br/>
                <hr/>
                <img id="mjpeg_dest" className={this.state.expanded ? "expanded" : ""} hidden={!this.state.camOn}
                     alt="CAM" onClick={this.toggleExpand}/>
                <button onClick={this.toggleCamera}>CAMERA {this.state.camOn ? "OFF" : "ON"}</button>
            </div>
        );
    }
}

export default ActionPanel