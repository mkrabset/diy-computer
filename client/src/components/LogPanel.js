import React, {Component} from 'react';

import config from '../config'


import "./LogPanel.css"


const WAIT_INTERVAL = 3000;

class LogPanel extends Component {
    constructor(props) {
        super(props);
        this.state = {
            log: "",
            next: 0
        }
        this.runLogCycle = this.runLogCycle.bind(this);
        this.updateLog = this.updateLog.bind(this);
        this.runLogCycle();

    }

    runLogCycle() {
        this.updateLog();
        setTimeout(this.runLogCycle, WAIT_INTERVAL);
    }

    updateLog() {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/batchlog?from="+this.state.next)
            .then(result => {
                    result.json().then(log => {
                        if (log.log.length>0) {
                            this.setState({
                                log: this.state.log+"\n"+log.log.join("\n"),
                                next: log.next
                            });
                        } else {
                            this.setState({
                               next: log.next
                            });
                        }
                    })
                }
            );
    }

    componentDidMount() {
        this.props.batchLogSetter(this);
    }

    render() {
        return (
            <div id="logpanel">
                <span>Installed code:</span>
                <textarea id="mappedCode" editable={false} value={this.props.mappedCode}/>
                <span>Programmer log:</span>
                <textarea id="log" editable={false} value={this.state.log}/>
            </div>
        );
    }
}

export default LogPanel;