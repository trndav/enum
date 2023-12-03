class Post < ApplicationRecord
    #By default draft=0, published=1, archived=2. Post.first.status
    #enum :status, [ :draft, :published, :archived ]
    #Add status to post: x=Post.statuses[:published], x.save  >> Change status: x.draft!
    # With added suffix: true, we can: x.archived_status?   x.draft_status!
    # Suffix will enable: x.status_archived?  and x.status_draft!
    enum status: { draft: 0, published: 1, archived: 2 }, _prefix: true    
end
