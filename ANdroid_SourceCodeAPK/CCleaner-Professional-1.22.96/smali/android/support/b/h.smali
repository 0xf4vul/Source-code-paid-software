.class final Landroid/support/b/h;
.super Landroid/support/b/p;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/b/r;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/b/p;-><init>()V

    .line 29
    new-instance v0, Landroid/support/b/j;

    invoke-direct {v0}, Landroid/support/b/j;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/support/b/h;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/support/b/r;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/b/p;-><init>()V

    .line 33
    new-instance v0, Landroid/support/b/j;

    invoke-direct {v0, p2}, Landroid/support/b/j;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/support/b/h;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    .line 34
    return-void
.end method
