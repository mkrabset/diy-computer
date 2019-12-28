import React, {Component} from 'react';
import config from '../config'
import { SvgLoader, SvgProxy } from 'react-svgmt';
import diycomputer from '../svg/VirtualMachine.svg'

class VirtualMachineDisplay extends Component {
    constructor(props) {
        super(props)
        this.busioOpacity=this.busioOpacity.bind(this)
    }

    busioOpacity(name) {
        return this.props.vmModel['bus']['from']===name || this.props.vmModel['bus']['to']===name ? 'opacity:1' : 'opacity:0'
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



                    <SvgProxy selector="#ALU_OUT" style={this.busioOpacity('ALU_OUT')}/>
                    <SvgProxy selector="#RAM_OUT" style={this.busioOpacity('RAM_OUT')}/>
                    <SvgProxy selector="#PC_OUT" style={this.busioOpacity('PC_OUT')}/>
                    <SvgProxy selector="#TMP_OUT" style={this.busioOpacity('TMP_OUT')}/>
                    <SvgProxy selector="#X_OUT" style={this.busioOpacity('X_OUT')}/>
                    <SvgProxy selector="#Y_OUT" style={this.busioOpacity('Y_OUT')}/>
                    <SvgProxy selector="#Z_OUT" style={this.busioOpacity('Z_OUT')}/>

                    <SvgProxy selector="#OUTPUT_0_IN" style={this.busioOpacity('OUTPUT_0_IN')}/>
                    <SvgProxy selector="#OUTPUT_1_IN" style={this.busioOpacity('OUTPUT_1_IN')}/>
                    <SvgProxy selector="#OUTPUT_2_IN" style={this.busioOpacity('OUTPUT_2_IN')}/>
                    <SvgProxy selector="#OUTPUT_3_IN" style={this.busioOpacity('OUTPUT_3_IN')}/>
                    
                    <SvgProxy selector="#ALU_A_IN" style={this.busioOpacity('ALU_A_IN')}/>
                    <SvgProxy selector="#ALU_B_IN" style={this.busioOpacity('ALU_B_IN')}/>
                    <SvgProxy selector="#RAM_IN" style={this.busioOpacity('RAM_IN')}/>
                    <SvgProxy selector="#MAR_OFFSET_IN" style={this.busioOpacity('MAR_OFFSET_IN')}/>
                    <SvgProxy selector="#PC_JMP_L_IN" style={this.busioOpacity('PC_JMP_L_IN')}/>
                    <SvgProxy selector="#PC_JMP_H_IN" style={this.busioOpacity('PC_JMP_H_IN')}/>
                    <SvgProxy selector="#INSTREG_IN" style={this.busioOpacity('INSTREG_IN')}/>
                    <SvgProxy selector="#TMP_IN" style={this.busioOpacity('TMP_IN')}/>
                    <SvgProxy selector="#X_IN" style={this.busioOpacity('X_IN')}/>
                    <SvgProxy selector="#Y_IN" style={this.busioOpacity('Y_IN')}/>
                    <SvgProxy selector="#Z_IN" style={this.busioOpacity('Z_IN')}/>
                </SvgLoader>
            </div>
        )
    }
}

export default VirtualMachineDisplay