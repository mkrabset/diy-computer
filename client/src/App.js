import React, {Component} from 'react'
import './App.css'
import LogPanel from "./components/LogPanel"
import CodeEdit from "./components/CodeEdit"
import ActionPanel from "./components/ActionPanel"
import VirtualMachineDisplay from "./components/VirtualMachineDisplay"
import config from "./config"

class App extends Component {

    constructor() {
        super()
        this.state = {
            mappedCode: ''
        }
        this.setBatchLog = this.setBatchLog.bind(this)
        this.onInstalled = this.onInstalled.bind(this)
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

    render() {
        return (
            <div className="App">

                <div id="appContainer">
                    <div id="leftPanel">
                        <div className="header">MACHINE CODE</div>
                        <VirtualMachineDisplay/>
                        <CodeEdit/>
                    </div>
                    <div id="middlePanel">
                        <div className="header">ACTION</div>
                        <ActionPanel onInstalled={this.onInstalled}/>
                    </div>
                    <div id="rightPanel">
                        <LogPanel mappedCode={this.state.mappedCode} batchLogSetter={this.setBatchLog}/>
                    </div>
                </div>
            </div>
        )
    }
}

export default App
