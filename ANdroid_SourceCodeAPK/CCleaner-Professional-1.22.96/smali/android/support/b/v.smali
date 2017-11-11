.class final Landroid/support/b/v;
.super Landroid/support/b/w;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/b/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/support/b/q;)V
    .locals 1

    .prologue
    .line 45
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/b/u;->a(Landroid/view/ViewGroup;Landroid/support/b/y;)V

    .line 47
    return-void

    .line 45
    :cond_0
    check-cast p2, Landroid/support/b/p;

    iget-object v0, p2, Landroid/support/b/p;->a:Landroid/support/b/y;

    goto :goto_0
.end method
