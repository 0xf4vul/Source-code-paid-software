.class final Lcom/piriform/ccleaner/ui/a/c$2;
.super Landroid/support/v7/app/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/piriform/ccleaner/ui/a/c;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/a/c;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/a/c$2;->i:Lcom/piriform/ccleaner/ui/a/c;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/app/b;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/support/v7/app/b;->a(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$2;->i:Lcom/piriform/ccleaner/ui/a/c;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/a/c;->invalidateOptionsMenu()V

    .line 148
    return-void
.end method

.method public final a(Landroid/view/View;F)V
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/support/v7/app/b;->a(Landroid/view/View;F)V

    .line 153
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$2;->i:Lcom/piriform/ccleaner/ui/a/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/a/c;->b(Lcom/piriform/ccleaner/ui/a/c;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/support/v7/app/b;->b(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$2;->i:Lcom/piriform/ccleaner/ui/a/c;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/a/c;->invalidateOptionsMenu()V

    .line 137
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$2;->i:Lcom/piriform/ccleaner/ui/a/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/a/c;->a(Lcom/piriform/ccleaner/ui/a/c;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$2;->i:Lcom/piriform/ccleaner/ui/a/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/a/c;->a(Lcom/piriform/ccleaner/ui/a/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 139
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$2;->i:Lcom/piriform/ccleaner/ui/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/ui/a/c;->a(Lcom/piriform/ccleaner/ui/a/c;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$2;->i:Lcom/piriform/ccleaner/ui/a/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/a/c;->b(Lcom/piriform/ccleaner/ui/a/c;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    return-void
.end method
