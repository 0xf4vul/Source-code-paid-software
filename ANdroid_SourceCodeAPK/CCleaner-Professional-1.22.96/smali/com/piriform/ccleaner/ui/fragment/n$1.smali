.class final Lcom/piriform/ccleaner/ui/fragment/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/fragment/n;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/fragment/n;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/n$1;->a:Lcom/piriform/ccleaner/ui/fragment/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$1;->a:Lcom/piriform/ccleaner/ui/fragment/n;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/n;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/n$1;->a:Lcom/piriform/ccleaner/ui/fragment/n;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/fragment/n;->ac:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0, p3, p4}, Lcom/piriform/ccleaner/core/a/h;->a(II)Lcom/piriform/ccleaner/core/a/b;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/b/m;

    .line 1059
    iget-object v0, v0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 91
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 1265
    iget-boolean v1, v0, Lcom/piriform/ccleaner/f/j;->b:Z

    .line 93
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n$1;->a:Lcom/piriform/ccleaner/ui/fragment/n;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/fragment/n;->q_()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2239
    iget v1, v0, Lcom/piriform/ccleaner/f/j;->d:I

    .line 93
    if-lez v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n$1;->a:Lcom/piriform/ccleaner/ui/fragment/n;

    .line 3210
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/n;->a(Lcom/piriform/ccleaner/f/j;)Lcom/piriform/ccleaner/ui/fragment/n;

    move-result-object v0

    .line 3211
    iget-object v1, v1, Lcom/piriform/ccleaner/ui/fragment/n;->c:Lcom/piriform/ccleaner/ui/activity/b;

    .line 4062
    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/activity/b;->c()Landroid/support/v4/app/m;

    move-result-object v1

    .line 4063
    invoke-virtual {v1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v2

    .line 4064
    const v3, 0x7f100084

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/q;->b(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    .line 4065
    invoke-virtual {v1}, Landroid/support/v4/app/m;->c()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "first_subfolder"

    .line 4066
    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v4/app/q;->a(Ljava/lang/String;)Landroid/support/v4/app/q;

    .line 4067
    invoke-virtual {v2}, Landroid/support/v4/app/q;->a()I

    .line 98
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 4065
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/n$1;->a:Lcom/piriform/ccleaner/ui/fragment/n;

    .line 4206
    iget-object v1, v1, Lcom/piriform/ccleaner/ui/fragment/n;->c:Lcom/piriform/ccleaner/ui/activity/b;

    .line 5071
    iget-object v1, v1, Lcom/piriform/ccleaner/ui/activity/b;->o:Lcom/piriform/ccleaner/g/a;

    .line 6296
    iget-object v2, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    .line 6227
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6040
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 7269
    iget-object v3, v0, Lcom/piriform/ccleaner/f/j;->g:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 7270
    iget-object v3, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/piriform/ccleaner/g/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/piriform/ccleaner/f/j;->g:Ljava/lang/String;

    .line 7272
    :cond_3
    iget-object v0, v0, Lcom/piriform/ccleaner/f/j;->g:Ljava/lang/String;

    .line 6019
    invoke-virtual {v1, v2, v0}, Lcom/piriform/ccleaner/g/a;->a(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2
.end method
