import React, {Component} from 'react'
import { Link } from "react-router-dom";
import NavBar from "./NavBar";

export default class Index extends Component {
  render () {
    return (
    <div>
      <NavBar/>
    <h1>Home Page</h1>
    <Link to= "/quiz" >Take the Quiz</Link>
    <Link to= "/result" >Result</Link>
    </div>
    )
    }
}
