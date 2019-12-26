import React, {Component} from 'react';

import config from '../config'
import {Tab, Tabs, TabList, TabPanel} from 'react-tabs';
import 'react-tabs/style/react-tabs.css';
import "./LogPanel.css"
import VirtualMachineDisplay from "./VirtualMachineDisplay";


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
        fetch("http://" + config.host + ":" + config.apiPort + "/api/batchlog?from=" + this.state.next)
            .then(result => {
                    result.json().then(log => {
                        if (log.log.length > 0) {
                            this.setState({
                                log: this.state.log + "\n" + log.log.join("\n"),
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
                <Tabs>
                    <TabList>
                        <Tab>Installed code</Tab>
                        <Tab>Programmer log</Tab>
                        <Tab>Virtual Machine</Tab>
                    </TabList>

                    <TabPanel>
                        <textarea id="mappedCode" editable={false} value={this.props.mappedCode}/>
                    </TabPanel>
                    <TabPanel>
                        <textarea id="log" editable={false} value={this.state.log}/>
                    </TabPanel>
                    <TabPanel>
                        <VirtualMachineDisplay vmModel={this.props.vmState}/>
                    </TabPanel>
                </Tabs>
            </div>
        );
    }
}

export default LogPanel;