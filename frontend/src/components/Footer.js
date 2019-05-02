import React, {Component} from 'react'
import { Link } from "react-router-dom";

export default class Footer extends Component {
  render () {
    return (
    <div>
    <h1>Footer</h1>
    <Link to= "/about" >About</Link>
    <Link to= "/login" >Sign In</Link>
    <Link to= "/meettheteam" >Meet The Team</Link>


    </div>
    )
    }
}