.class final Lcom/piriform/ccleaner/appmanager/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/l;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/l;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/l$1;->a:Lcom/piriform/ccleaner/appmanager/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/l$1;->a:Lcom/piriform/ccleaner/appmanager/l;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/l;->a()V

    .line 35
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method
