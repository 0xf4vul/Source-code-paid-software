.class public final Lcom/piriform/ccleaner/appmanager/m;
.super Landroid/support/v7/widget/RecyclerView$u;
.source "SourceFile"


# instance fields
.field final n:Lcom/piriform/ccleaner/appmanager/ApplicationView;

.field o:Lcom/piriform/ccleaner/core/a/a;


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/appmanager/ApplicationView;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$u;-><init>(Landroid/view/View;)V

    .line 34
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/m;->n:Lcom/piriform/ccleaner/appmanager/ApplicationView;

    .line 35
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/appmanager/m;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/piriform/ccleaner/appmanager/m;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/piriform/ccleaner/appmanager/ApplicationView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/appmanager/ApplicationView;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v1, Landroid/support/v7/widget/RecyclerView$i;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$i;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/appmanager/ApplicationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v1, Lcom/piriform/ccleaner/appmanager/m;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/appmanager/m;-><init>(Lcom/piriform/ccleaner/appmanager/ApplicationView;)V

    return-object v1
.end method
