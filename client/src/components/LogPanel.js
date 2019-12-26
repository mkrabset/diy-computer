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
            next: 0,
            vmState: {
                out: {
                    reg0: "out0",
                    reg1: "out1",
                    reg2: "out2",
                    reg3: "out3"
                },
                instreg: {
                  instr: 'IN',
                  step: 'ST'
                },
                bus: {
                    value: 'BU'
                },
                pc: {
                    jumptarget: 'trg',
                    current: 'cur'
                },
                mar: {
                    address: 'mar'
                },
                reg: {
                    x: 'xx',
                    y: 'yy',
                    z: 'zz',
                    t: 'tt',
                },
                sp: {
                    address: 'sp'
                },
                alu: {
                    a: 'aa',
                    b: 'bb',
                    flags: {
                        c: 'c',
                        v: 'v',
                        z: 'z',
                        n: 'n'
                    },
                    operation: 'OP',
                    result: {
                        value: 'res',
                        co: 'co'
                    }
                }
            }
        }
        this.runLogCycle = this.runLogCycle.bind(this);
        this.updateLog = this.updateLog.bind(this);
        this.updateVMState = this.updateVMState.bind(this);
        this.runLogCycle();
    }

    runLogCycle() {
        this.updateLog();
        this.updateVMState();  // TODO: replace this
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

    updateVMState() {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/vmState")
            .then(result => {
                result.json().then(newVmState => {
                    this.setState( {
                        vmState: newVmState
                    })
                })
            })
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
                        <VirtualMachineDisplay vmModel={this.state.vmState}/>
                    </TabPanel>
                </Tabs>
            </div>
        );
    }
}

export default LogPanel;