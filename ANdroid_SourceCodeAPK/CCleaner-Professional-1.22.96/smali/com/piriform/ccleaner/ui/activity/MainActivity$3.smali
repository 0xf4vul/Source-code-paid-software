.class final Lcom/piriform/ccleaner/ui/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 229
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$3;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 232
    invoke-static {p1}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$3;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    .line 1106
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->f:Lcom/piriform/ccleaner/b/b;

    const-string/jumbo v2, "Storage"

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 234
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$3;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->c(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$3;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->A:Lcom/piriform/ccleaner/b/c/a;

    .line 1110
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->f:Lcom/piriform/ccleaner/b/b;

    const-string/jumbo v2, "RAM"

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    goto :goto_0
.end method
