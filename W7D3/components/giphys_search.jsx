import React from 'react';

import GiphysIndex from './giphys_index';

class GiphysSearch extends React.Components{
  constructor(props){
    super(props);
    this.state = {searchTerm: ''};
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(e){
    this.setState({searchTerm: e.currentTarget.value});
  }

  handleSubmit(e){
    e.preventDefault();
    this.props.fetchSearchGiphys(this.state.searchTerm.split(' ').join('+'));
  }

  render(){
    let {giphys} = this.props;
    return (
      <div>
        <input type="text" onChange={this.handleChange}></input>
        <button type="button" onClick={this.handleSubmit}></button>

        <GiphysIndex giphys = {giphys}/>
      </div>
    );
  }
}

export default GiphysSearch;
