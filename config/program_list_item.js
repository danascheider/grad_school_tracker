class ProgramListItem extends ReactComponent {
  render() {
    return(
      <li class="program_list_item">
        <div class="title">{this.props.name}</div>
      </li>;
    );
  }
}