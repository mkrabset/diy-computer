import React, {Component} from 'react';

import config from '../config'


import "./ActionPanel.css"


const WAIT_INTERVAL = 2000;

class ActionPanel extends Component {
    constructor() {
        super();
        this.toggleCamera = this.toggleCamera.bind(this);
        this.reload_img = this.reload_img.bind(this);
        this.sendCommand = this.sendCommand.bind(this);
        this.toggleExpand= this.toggleExpand.bind(this);
        this.reconnect= this.reconnect.bind(this);
        this.installCode= this.installCode.bind(this);
        this.resetPc= this.resetPc.bind(this);
        this.run= this.run.bind(this);
        this.halt= this.halt.bind(this);
        this.step= this.step.bind(this);
        this.updateRunDelay= this.updateRunDelay.bind(this);
        this.state = {
            expanded: false,
            camOn: false,
            runDelay: 500000
        };
    }

    sendCommand(command) {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/command", {
            method: "post",
            body: command
        }).then(result => {

            }
        );
    }

    updateRunDelay() {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/runDelay", {
            method: "post",
            body: ""+this.state.runDelay
        }).then(result => {

            }
        );
    }

    readRunDelay() {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/runDelay", {
            method: "get"
        }).then(result => {
             result.text().then(txt=>this.setState({runDelay: txt}));
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
        this.sendCommand("reconnect");
    }

    installCode() {
        this.sendCommand("install")
    }

    resetPc() {
        this.sendCommand("initPc")
    }

    run() {
        this.sendCommand("run")
    }

    halt() {
        this.sendCommand("halt")
    }

    step() {
        this.sendCommand("step")
    }

    render() {
        return (
            <div id="actionpanel">
                <button onClick={this.reconnect}>Reconnect</button><br/>
                <button onClick={this.installCode}>Install Code</button><br/>
                <button onClick={this.resetPc}>Reset program counter</button><br/>
                <button onClick={this.run}>Run</button><br/>
                <button onClick={this.halt}>Halt</button><br/>
                <button onClick={this.step}>Single step</button><br/>
                <input value={this.state.runDelay}
                       //onChange={this.updateRunDelay.bind(this)}
                       onChange={event => this.setState({runDelay: event.target.value.replace(/\D/,'')})}
                       onBlur={event=>{this.updateRunDelay();this.readRunDelay()}}
                />
                <br/>
                <br/>
                <img id="mjpeg_dest" className={this.state.expanded?"expanded":""} hidden={!this.state.camOn} alt="CAM" onClick={this.toggleExpand}/>
                <button onClick={this.toggleCamera}>CAMERA {this.state.camOn ? "OFF" : "ON"}</button>
            </div>
        );
    }
}

export default ActionPanel