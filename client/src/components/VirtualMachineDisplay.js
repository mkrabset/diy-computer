import React, {Component} from 'react';
import config from '../config'
import { SvgLoader, SvgProxy } from 'react-svgmt';
import diycomputer from '../svg/VirtualMachine.svg'

class VirtualMachineDisplay extends Component {
    constructor(props) {
        super(props)
    }
    
    render() {
        console.log(diycomputer)
        return (
            <div id="disp">
                <SvgLoader path={diycomputer}>
                    <SvgProxy selector="#disp_out0">{this.props.vmModel['out']['reg0']}</SvgProxy>
                    <SvgProxy selector="#disp_out1">{this.props.vmModel['out']['reg1']}</SvgProxy>
                    <SvgProxy selector="#disp_out2">{this.props.vmModel['out']['reg2']}</SvgProxy>
                    <SvgProxy selector="#disp_out3">{this.props.vmModel['out']['reg3']}</SvgProxy>
                    <SvgProxy selector="#disp_bus">{this.props.vmModel['bus']['value']}</SvgProxy>
                    <SvgProxy selector="#disp_pc_jumptarget">{this.props.vmModel['pc']['jumptarget']}</SvgProxy>
                    <SvgProxy selector="#disp_pc_current">{this.props.vmModel['pc']['current']}</SvgProxy>
                    <SvgProxy selector="#disp_instreg_instr">{this.props.vmModel['instreg']['instr']}</SvgProxy>
                    <SvgProxy selector="#disp_instreg_step">{this.props.vmModel['instreg']['step']}</SvgProxy>
                    <SvgProxy selector="#disp_mar">{this.props.vmModel['mar']['address']}</SvgProxy>
                    <SvgProxy selector="#disp_reg_x">{this.props.vmModel['reg']['x']}</SvgProxy>
                    <SvgProxy selector="#disp_reg_y">{this.props.vmModel['reg']['y']}</SvgProxy>
                    <SvgProxy selector="#disp_reg_z">{this.props.vmModel['reg']['z']}</SvgProxy>
                    <SvgProxy selector="#disp_reg_t">{this.props.vmModel['reg']['t']}</SvgProxy>
                    <SvgProxy selector="#disp_sp">{this.props.vmModel['sp']['address']}</SvgProxy>
                    <SvgProxy selector="#disp_alureg_a">{this.props.vmModel['alu']['a']}</SvgProxy>
                    <SvgProxy selector="#disp_alureg_b">{this.props.vmModel['alu']['b']}</SvgProxy>
                    <SvgProxy selector="#disp_alu_flag_c">{this.props.vmModel['alu']['flags']['c']}</SvgProxy>
                    <SvgProxy selector="#disp_alu_flag_v">{this.props.vmModel['alu']['flags']['v']}</SvgProxy>
                    <SvgProxy selector="#disp_alu_flag_z">{this.props.vmModel['alu']['flags']['z']}</SvgProxy>
                    <SvgProxy selector="#disp_alu_flag_n">{this.props.vmModel['alu']['flags']['n']}</SvgProxy>
                    <SvgProxy selector="#disp_alu_operation">{this.props.vmModel['alu']['operation']}</SvgProxy>
                    <SvgProxy selector="#disp_alu_result">{this.props.vmModel['alu']['result']['value']}</SvgProxy>
                    <SvgProxy selector="#disp_alu_carryout">{this.props.vmModel['alu']['result']['co']}</SvgProxy>
                </SvgLoader>
            </div>
        )
    }
}

export default VirtualMachineDisplay