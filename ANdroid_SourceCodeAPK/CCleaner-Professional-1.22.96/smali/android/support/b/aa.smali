.class final Landroid/support/b/aa;
.super Landroid/support/b/p;
.source "SourceFile"

# interfaces
.implements Landroid/support/b/ab;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private c:Landroid/support/b/ad;


# direct methods
.method public constructor <init>(Landroid/support/b/r;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/b/p;-><init>()V

    .line 29
    new-instance v0, Landroid/support/b/ad;

    invoke-direct {v0}, Landroid/support/b/ad;-><init>()V

    iput-object v0, p0, Landroid/support/b/aa;->c:Landroid/support/b/ad;

    .line 30
    iget-object v0, p0, Landroid/support/b/aa;->c:Landroid/support/b/ad;

    invoke-virtual {p0, p1, v0}, Landroid/support/b/aa;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Landroid/support/b/ab;
    .locals 1

    .prologue
    .line 22
    .line 2040
    iget-object v0, p0, Landroid/support/b/aa;->c:Landroid/support/b/ad;

    invoke-virtual {v0, p1}, Landroid/support/b/ad;->a(I)Landroid/support/b/ad;

    .line 22
    return-object p0
.end method

.method public final bridge synthetic a(Landroid/support/b/q;)Landroid/support/b/ab;
    .locals 2

    .prologue
    .line 22
    .line 1046
    iget-object v0, p0, Landroid/support/b/aa;->c:Landroid/support/b/ad;

    check-cast p1, Landroid/support/b/p;

    iget-object v1, p1, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, v1}, Landroid/support/b/ad;->a(Landroid/support/b/y;)Landroid/support/b/ad;

    .line 22
    return-object p0
.end method
