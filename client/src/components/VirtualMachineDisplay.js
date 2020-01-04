import React, {Component} from 'react';
import config from '../config'
import {SvgLoader, SvgProxy} from 'react-svgmt';
import diycomputer from '../svg/VirtualMachine.svg'

class VirtualMachineDisplay extends Component {
    constructor(props) {
        super(props)
        this.ifBus = this.ifBus.bind(this)
        this.ifSig = this.ifSig.bind(this)
        this.signalOn = this.signalOn.bind(this)
        this.busOn = this.busOn.bind(this)
        this.opa = this.opa.bind(this)
    }

    busio=[
        'ALU_OUT',
        'RAM_OUT',
        'PC_OUT',
        'TMP_OUT',
        'X_OUT',
        'Y_OUT',
        'Z_OUT',
        'OUTPUT_0_IN',
        'OUTPUT_1_IN',
        'OUTPUT_2_IN',
        'OUTPUT_3_IN',
        'ALU_A_IN',
        'ALU_B_IN',
        'RAM_IN',
        'MAR_OFFSET_IN',
        'PC_JMP_L_IN',
        'PC_JMP_H_IN',
        'INSTREG_IN',
        'TMP_IN',
        'X_IN',
        'Y_IN',
        'Z_IN'
    ]

    ifBus(name) {
        return this.opa(this.busOn(name))
    }

    busOn(name) {
        return this.props.vmModel['bus']['from'] === name || this.props.vmModel['bus']['to'] === name;
    }

    ifSig(name) {
        return this.opa(this.signalOn(name))
    }

    opa(b) {
        return b ? 'opacity:1' : 'opacity:0'
    }

    signalOn(name) {
        return this.props.vmModel['signals'].indexOf(name) != -1
    }

    render() {
        var proxies = [
            <SvgProxy selector="#disp_out0">{this.props.vmModel['out']['reg0']}</SvgProxy>,
            <SvgProxy selector="#disp_out1">{this.props.vmModel['out']['reg1']}</SvgProxy>,
            <SvgProxy selector="#disp_out2">{this.props.vmModel['out']['reg2']}</SvgProxy>,
            <SvgProxy selector="#disp_out3">{this.props.vmModel['out']['reg3']}</SvgProxy>,
            <SvgProxy selector="#disp_bus">{this.props.vmModel['bus']['value']}</SvgProxy>,
            <SvgProxy selector="#disp_pc_jumptarget">{this.props.vmModel['pc']['jumptarget']}</SvgProxy>,
            <SvgProxy selector="#disp_pc_current">{this.props.vmModel['pc']['current']}</SvgProxy>,
            <SvgProxy selector="#disp_instreg_instr">{this.props.vmModel['instreg']['instr']}</SvgProxy>,
            <SvgProxy selector="#disp_instreg_inst_txt">{this.props.vmModel['instreg']['insttxt']}</SvgProxy>,
            <SvgProxy selector="#disp_instreg_step">{this.props.vmModel['instreg']['step']}</SvgProxy>,
            <SvgProxy selector="#disp_mar">{this.props.vmModel['mar']['address']}</SvgProxy>,
            <SvgProxy selector="#disp_mar_offset">{this.props.vmModel['mar']['offset']}</SvgProxy>,
            <SvgProxy selector="#disp_mar_value">{this.props.vmModel['mar']['value']}</SvgProxy>,
            <SvgProxy selector="#disp_reg_x">{this.props.vmModel['reg']['x']}</SvgProxy>,
            <SvgProxy selector="#disp_reg_y">{this.props.vmModel['reg']['y']}</SvgProxy>,
            <SvgProxy selector="#disp_reg_z">{this.props.vmModel['reg']['z']}</SvgProxy>,
            <SvgProxy selector="#disp_reg_t">{this.props.vmModel['reg']['t']}</SvgProxy>,
            <SvgProxy selector="#disp_sp">{this.props.vmModel['sp']['address']}</SvgProxy>,
            <SvgProxy selector="#disp_alureg_a">{this.props.vmModel['alu']['a']}</SvgProxy>,
            <SvgProxy selector="#disp_alureg_b">{this.props.vmModel['alu']['b']}</SvgProxy>,
            <SvgProxy selector="#disp_alu_flag_c">{this.props.vmModel['alu']['flags']['c']}</SvgProxy>,
            <SvgProxy selector="#disp_alu_flag_v">{this.props.vmModel['alu']['flags']['v']}</SvgProxy>,
            <SvgProxy selector="#disp_alu_flag_z">{this.props.vmModel['alu']['flags']['z']}</SvgProxy>,
            <SvgProxy selector="#disp_alu_flag_n">{this.props.vmModel['alu']['flags']['n']}</SvgProxy>,
            <SvgProxy selector="#disp_alu_operation">{this.props.vmModel['alu']['operation']}</SvgProxy>,
            <SvgProxy selector="#disp_alu_result">{this.props.vmModel['alu']['result']['value']}</SvgProxy>,
            <SvgProxy selector="#disp_alu_carryout">{this.props.vmModel['alu']['result']['co']}</SvgProxy>
        ]

        this.busio.forEach(bio=>{
            proxies.push(<SvgProxy selector={'#'+bio} style={this.opa(this.busOn(bio))}/>);
        })

        proxies.push(<SvgProxy selector='#MAR_H_IN' style={this.opa(this.signalOn('MAR.LOADHIGH') && !this.signalOn('MAR.LOADLOW'))}/>)
        proxies.push(<SvgProxy selector='#MAR_L_IN' style={this.opa(this.signalOn('MAR.LOADLOW') && !this.signalOn('MAR.LOADHIGH'))}/>)
        proxies.push(<SvgProxy selector='#pc2mux' style={this.opa(this.signalOn('MAR.LOADLOW') && this.signalOn('MAR.LOADHIGH') && !this.signalOn('MUX.selectStackPointer'))}/>)
        proxies.push(<SvgProxy selector='#sp2mux' style={this.opa(this.signalOn('MAR.LOADLOW') && this.signalOn('MAR.LOADHIGH') && this.signalOn('MUX.selectStackPointer'))}/>)
        proxies.push(<SvgProxy selector='#mux2mar' style={this.opa(this.signalOn('MAR.LOADLOW') && this.signalOn('MAR.LOADHIGH'))}/>)

        return (
            <div id="disp">
                <SvgLoader path={diycomputer}>
                    {proxies}
                </SvgLoader>
                <br/>
                {this.props.vmModel['bus']['from']}  {'--->'}   {this.props.vmModel['bus']['to']}
                <br/>
                <span>
                    {JSON.stringify(this.props.vmModel['signals'])}
                </span>
            </div>
        )
    }
}

export default VirtualMachineDisplay