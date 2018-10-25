import React, {Component} from 'react';

import "./CodeEdit.css"
import config from '../config'


const WAIT_INTERVAL = 1000;

class CodeEdit extends Component {
    constructor() {
        super();
        this.state = {
            code: "",
            status: "OutOfSync"
        }
        this.refreshCode();
        this.handleChange = this.handleChange.bind(this);
        this.updateCode = this.updateCode.bind(this);
        this.fileUpload = this.fileUpload.bind(this);
        this.clearCode = this.clearCode.bind(this);
        this.hasUncommittedChanges=false;
    }




    componentWillMount() {
        this.timer = null;
    }

    refreshCode() {
        fetch("http://"+config.host+":"+config.apiPort+"/api/code")
            .then(response => {
                response.text().then(data => {
                    this.setState({code: data, status: "InSync"});
                    console.log("Code refreshed to : " + data)
                })
            })
    }

    handleChange(e) {
        this.hasUncommittedChanges=true;
        this.setState({status: "OutOfSync", code: e.target.value});
        clearTimeout(this.timer);
        this.timer = setTimeout(this.updateCode, WAIT_INTERVAL);
    }

    updateCode() {
        this.uploadAndSetCode(this.state.code);
    }

    uploadAndSetCode(code) {
        this.hasUncommittedChanges=false;
        fetch("http://"+config.host+":"+config.apiPort+"/api/code",
            {
                method: "post",
                body: code
            })
            .then(response => {
                response.text().then(data => {
                    if (!this.hasUncommittedChanges) {
                        this.setState({status: "InSync", code: code});
                    }
                    console.log("Code updated to : " + this.state.code)
                })
            })
    }




    fileUpload(e) {
        const codeEdit = this;

        this.setState({status: "OutOfSync"});
        var reader = new FileReader();

        reader.onload = function (event) {
            const contents = event.target.result;
            codeEdit.uploadAndSetCode(contents);
        };

        reader.readAsText(e.target.files[0]);
    }

    clearCode() {
        this.setState({code: "", status: "OutOfSync"});
        this.uploadAndSetCode("");
    }


    render() {
        return (
            <div id="codeedit">
                <div>
                    <div id="upload">
                        <strong>Upload:</strong>
                        <input id="codeupload" type="file" onChange={this.fileUpload}/>
                    </div>
                    <button id="clearcode" onClick={this.clearCode}>Clear</button>
                    <br/>
                </div>
                <textarea id="code" className={this.state.status} value={this.state.code}
                          onChange={this.handleChange}></textarea>

            </div>
        )
            ;
    }
}

export default CodeEdit