import React, {Component} from 'react'
import './App.css'
import LogPanel from "./components/LogPanel"
import CodeEdit from "./components/CodeEdit"
import ActionPanel from "./components/ActionPanel"
import config from "./config"

class App extends Component {

    constructor() {
        super()
        this.state = {
            mappedCode: '',
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
        this.setBatchLog = this.setBatchLog.bind(this)
        this.onInstalled = this.onInstalled.bind(this)
        this.onStepped = this.onStepped.bind(this)
        this.batchLog = null
    }

    setBatchLog(batchLog) {
        this.batchLog = batchLog
    }

    onInstalled() {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/mappedCode")
            .then(result => {
                    result.text().then(mappedCode => {
                        this.setState({
                            mappedCode: mappedCode
                        })
                    })
                }
            )

    }

    onStepped() {
        fetch("http://" + config.host + ":" + config.apiPort + "/api/vmState")
            .then(result => {
                result.json().then(newVmState => {
                    this.setState( {
                        vmState: newVmState
                    })
                })
            })
    }

    render() {
        return (
            <div className="App">
                <div id="appContainer">
                    <div id="leftPanel">
                        <div className="header">MACHINE CODE</div>

                        <CodeEdit/>
                    </div>
                    <div id="middlePanel">
                        <div className="header">ACTION</div>
                        <ActionPanel onInstalled={this.onInstalled} onStepped={this.onStepped}/>
                    </div>
                    <div id="rightPanel">
                        <LogPanel mappedCode={this.state.mappedCode} batchLogSetter={this.setBatchLog} vmState={this.state.vmState}/>
                    </div>
                </div>
            </div>
        )
    }
}

export default App
