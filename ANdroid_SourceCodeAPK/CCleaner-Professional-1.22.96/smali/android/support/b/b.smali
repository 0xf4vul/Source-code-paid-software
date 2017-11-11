.class final Landroid/support/b/b;
.super Landroid/support/b/ad;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Landroid/support/b/ad;-><init>()V

    .line 40
    invoke-virtual {p0, v2}, Landroid/support/b/b;->a(I)Landroid/support/b/ad;

    .line 41
    new-instance v0, Landroid/support/b/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/b/j;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/b/b;->a(Landroid/support/b/y;)Landroid/support/b/ad;

    move-result-object v0

    new-instance v1, Landroid/support/b/f;

    invoke-direct {v1}, Landroid/support/b/f;-><init>()V

    .line 42
    invoke-virtual {v0, v1}, Landroid/support/b/ad;->a(Landroid/support/b/y;)Landroid/support/b/ad;

    move-result-object v0

    new-instance v1, Landroid/support/b/j;

    invoke-direct {v1, v2}, Landroid/support/b/j;-><init>(I)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/support/b/ad;->a(Landroid/support/b/y;)Landroid/support/b/ad;

    .line 44
    return-void
.end method
