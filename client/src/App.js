import React, {Component} from 'react';
import './App.css';
import LogPanel from "./components/LogPanel";
import CodeEdit from "./components/CodeEdit";
import ActionPanel from "./components/ActionPanel";

class App extends Component {

    constructor() {
        super();
        this.setBatchLog=this.setBatchLog.bind(this);
        this.batchLog=null;
    }

    setBatchLog(batchLog) {
        this.batchLog = batchLog;
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
                        <ActionPanel/>
                    </div>
                    <div id="rightPanel">
                        <div className="header">LOG</div>
                        <LogPanel batchLogSetter={this.setBatchLog}/>
                    </div>
                </div>
            </div>
        );
    }
}

export default App;
