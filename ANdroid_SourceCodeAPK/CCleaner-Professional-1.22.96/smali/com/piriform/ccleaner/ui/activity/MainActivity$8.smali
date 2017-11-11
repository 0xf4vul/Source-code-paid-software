.class final Lcom/piriform/ccleaner/ui/activity/MainActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/fragment/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$8;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/b/d;)V
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/ui/b/d;->a(Z)V

    .line 857
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/ui/b/d;Z)V
    .locals 1

    .prologue
    .line 849
    if-eqz p2, :cond_0

    .line 850
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$8;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->a(Lcom/piriform/ccleaner/ui/activity/MainActivity;Lcom/piriform/ccleaner/ui/b/d;)V

    .line 852
    :cond_0
    return-void
.end method

.method public final b(Lcom/piriform/ccleaner/ui/b/d;)V
    .locals 3

    .prologue
    .line 861
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/ui/b/d;->a(Z)V

    .line 862
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$8;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$8;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->e(Lcom/piriform/ccleaner/ui/activity/MainActivity;)Lcom/piriform/ccleaner/a/a;

    move-result-object v2

    .line 1059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 862
    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    invoke-interface {v2, v0}, Lcom/piriform/ccleaner/a/a;->a(Lcom/piriform/ccleaner/a/a/d;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 863
    return-void
.end method
