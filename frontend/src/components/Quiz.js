import React, {Component} from 'react'
import axios from "axios"
export default class Quiz extends Component {
  constructor() {
    super();
    this.state = {
      questions:[]
    }
  }

  componentDidMount() {
    axios("/api/v1/quizzes/new")
    .then(response => {
      console.log(response.data)
       this.setState({questions:response.data})
    })
    .catch(error => console.log(error))
  
  }

  render(){
    return (<h1>Quiz page</h1>)
  }
}
