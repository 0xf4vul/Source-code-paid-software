.class public abstract Landroid/support/b/ai;
.super Landroid/support/b/n;
.source "SourceFile"

# interfaces
.implements Landroid/support/b/aj;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/b/n;-><init>(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method public a(Landroid/support/b/ae;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1}, Landroid/support/b/q;->b(Landroid/support/b/ae;)V

    .line 62
    return-void
.end method

.method public b(Landroid/support/b/ae;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/b/ai;->a:Landroid/support/b/q;

    invoke-virtual {v0, p1}, Landroid/support/b/q;->a(Landroid/support/b/ae;)V

    .line 57
    return-void
.end method
