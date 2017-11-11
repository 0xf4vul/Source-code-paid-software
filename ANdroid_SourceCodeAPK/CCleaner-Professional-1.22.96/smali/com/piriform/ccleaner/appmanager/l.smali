.class final Lcom/piriform/ccleaner/appmanager/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/appmanager/l$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Landroid/view/ActionMode;

.field final c:Lcom/piriform/ccleaner/appmanager/l$a;

.field final d:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/appmanager/l$a;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/piriform/ccleaner/appmanager/l$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/appmanager/l$1;-><init>(Lcom/piriform/ccleaner/appmanager/l;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/l;->d:Landroid/view/ActionMode$Callback;

    .line 39
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/l;->c:Lcom/piriform/ccleaner/appmanager/l$a;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 51
    .line 1060
    iget-boolean v0, p0, Lcom/piriform/ccleaner/appmanager/l;->a:Z

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/appmanager/l;->a:Z

    .line 53
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/l;->b:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/appmanager/l;->b:Landroid/view/ActionMode;

    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/l;->c:Lcom/piriform/ccleaner/appmanager/l$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/appmanager/l$a;->a()V

    .line 57
    :cond_0
    return-void
.end method
