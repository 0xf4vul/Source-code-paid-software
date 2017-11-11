.class public final Landroid/support/b/a;
.super Landroid/support/b/z;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-direct {p0}, Landroid/support/b/z;-><init>()V

    .line 33
    invoke-virtual {p0, v2}, Landroid/support/b/a;->a(I)Landroid/support/b/z;

    .line 34
    new-instance v0, Landroid/support/b/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/b/g;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/b/a;->a(Landroid/support/b/n;)Landroid/support/b/z;

    move-result-object v0

    new-instance v1, Landroid/support/b/c;

    invoke-direct {v1}, Landroid/support/b/c;-><init>()V

    .line 35
    invoke-virtual {v0, v1}, Landroid/support/b/z;->a(Landroid/support/b/n;)Landroid/support/b/z;

    move-result-object v0

    new-instance v1, Landroid/support/b/g;

    invoke-direct {v1, v2}, Landroid/support/b/g;-><init>(I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/support/b/z;->a(Landroid/support/b/n;)Landroid/support/b/z;

    .line 37
    return-void
.end method
