.class final Lcom/piriform/ccleaner/rooted/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/rooted/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/rooted/p;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/rooted/p;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/piriform/ccleaner/rooted/p$1;->a:Lcom/piriform/ccleaner/rooted/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 25
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/p$1;->a:Lcom/piriform/ccleaner/rooted/p;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/rooted/p;->g()Landroid/support/v4/app/i;

    move-result-object v0

    instance-of v0, v0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/p$1;->a:Lcom/piriform/ccleaner/rooted/p;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/rooted/p;->g()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    .line 1232
    invoke-static {}, Lcom/piriform/ccleaner/rooted/i;->I()Lcom/piriform/ccleaner/rooted/i;

    move-result-object v1

    .line 1233
    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->c()Landroid/support/v4/app/m;

    move-result-object v0

    .line 2031
    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v0

    .line 2032
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/h;Ljava/lang/String;)Landroid/support/v4/app/q;

    .line 2033
    invoke-virtual {v0}, Landroid/support/v4/app/q;->b()I

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/p$1;->a:Lcom/piriform/ccleaner/rooted/p;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/rooted/p;->g()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f0800f7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
