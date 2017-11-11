.class final Lcom/piriform/ccleaner/appmanager/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/piriform/ccleaner/appmanager/k;

.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

.field e:Z

.field private final f:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

.field private final g:Lcom/piriform/ccleaner/s/j;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/k;Lcom/piriform/ccleaner/appmanager/AppManagerActivity;Lcom/piriform/ccleaner/s/j;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->b:Ljava/util/Queue;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->c:Ljava/util/Queue;

    .line 29
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/e;->a:Lcom/piriform/ccleaner/appmanager/k;

    .line 30
    iput-object p2, p0, Lcom/piriform/ccleaner/appmanager/e;->f:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    .line 31
    iput-object p3, p0, Lcom/piriform/ccleaner/appmanager/e;->g:Lcom/piriform/ccleaner/s/j;

    .line 32
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->a:Lcom/piriform/ccleaner/appmanager/k;

    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/k;->g()V

    .line 65
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 56
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1166
    iget-boolean v0, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->h:Z

    .line 56
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->g:Lcom/piriform/ccleaner/s/j;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/j;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Trying to uninstall SYSTEM APP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/e;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/core/data/AndroidPackage;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/e;->f:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    const-class v2, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    sget-object v1, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/e;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/e;->f:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    const/16 v2, 0x21c7

    invoke-virtual {v1, v0, v2}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DELETE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/e;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 2107
    iget-object v3, v3, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/e;->f:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    const/16 v2, 0x21c6

    invoke-virtual {v1, v0, v2}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->a:Lcom/piriform/ccleaner/appmanager/k;

    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/k;->g()V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/e;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/e;->f:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    const-class v2, Lcom/piriform/ccleaner/rooted/RootDisablerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    sget-object v1, Lcom/piriform/ccleaner/rooted/RootDisablerActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/e;->d:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/e;->f:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    const/16 v2, 0x21c8

    invoke-virtual {v1, v0, v2}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
