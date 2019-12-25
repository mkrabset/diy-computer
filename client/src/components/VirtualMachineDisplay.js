import React, {Component} from 'react';
import config from '../config'
import SVG from 'react-inlinesvg';
import svgimg from '../svg/diycomputer.svg'
import App from "../App";

class VirtualMachineDisplay extends Component {
    constructor(props) {
        super(props)
        var doc=<SVG id="virtmachinesvg" src={svgimg}/>
    }
    
    render() {
        return (
            <div id="disp">
                <SVG id="virtmachinesvg" src={svgimg}/>
            </div>
        )
    }
}

export default VirtualMachineDisplay