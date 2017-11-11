.class public Lcom/piriform/ccleaner/ui/main/m;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/main/j;


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f10010e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/m;->a:Landroid/view/View;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/m;->a:Landroid/view/View;

    new-instance v1, Lcom/piriform/ccleaner/ui/main/m$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/ui/main/m$1;-><init>(Lcom/piriform/ccleaner/ui/main/m;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
