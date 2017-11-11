.class final Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$1;->a:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView$1;->a:Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;

    if-ne p2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;->a(Lcom/piriform/ccleaner/ui/view/LockableExpandableListView;Z)Z

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
