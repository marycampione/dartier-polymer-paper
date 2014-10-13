import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:template_binding/template_binding.dart';
import 'package:polymer_paper_example/post_service.dart';

@CustomTag('post-list')
class PostList extends PolymerElement {
  
  @observable List<List> allPosts = null;

  @published String show;

  PostService get _service => $['service'];

  PostList.created() : super.created();
  
  handleFavorite(event, detail, sender) {
    var post = nodeBind(sender).templateInstance.model['post'];
    _service.setFavorite(post.uid, post.favorite);
  }
}
