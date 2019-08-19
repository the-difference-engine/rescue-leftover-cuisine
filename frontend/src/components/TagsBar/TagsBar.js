import map from 'lodash/map';
import React, { Component } from 'react';

import AddTag from './AddTag/AddTag';
import SingleTag from './SingleTag/SingleTag';

import './TagsBar.css';

export default class TagsBar extends Component {
  constructor() {
    super();
    this.state = {
      tags: ['VEGAN', 'HEALTHY', 'DINNER', 'CHEESY', 'KIDS', 'NUTS'],
    };
  }

  render() {
    const { tags } = this.state;
    return (
      <div className="tags-bar col-sm-10 offset-sm-1">
        {map(tags, tag => <SingleTag tag={tag} key={tag} />)}
        <AddTag />
      </div>
    );
  }
}
