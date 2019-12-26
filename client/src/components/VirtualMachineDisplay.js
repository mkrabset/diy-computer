import React, {Component} from 'react';
import config from '../config'
import { SvgLoader, SvgProxy } from 'react-svgmt';
import diycomputer from './VirtualMachine.svg'

class VirtualMachineDisplay extends Component {
    constructor(props) {
        super(props)
    }
    
    render() {
        console.log(diycomputer)
        return (
            <div id="disp">
                <SvgLoader path={diycomputer}>
                    <SvgProxy selector="#disp_out3">heisann</SvgProxy>
                </SvgLoader>
            </div>
        )
    }
}

export default VirtualMachineDisplay