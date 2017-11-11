.class Landroid/support/b/p;
.super Landroid/support/b/q;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/b/p$a;
    }
.end annotation


# instance fields
.field a:Landroid/support/b/y;

.field b:Landroid/support/b/r;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/b/q;-><init>()V

    .line 236
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/b/y;->a(Landroid/view/ViewGroup;Landroid/support/b/ae;Landroid/support/b/ae;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public final a()Landroid/support/b/q;
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    const-wide/16 v2, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/support/b/y;->a(J)Landroid/support/b/y;

    .line 144
    return-object p0
.end method

.method public final a(Landroid/animation/TimeInterpolator;)Landroid/support/b/q;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, p1}, Landroid/support/b/y;->a(Landroid/animation/TimeInterpolator;)Landroid/support/b/y;

    .line 155
    return-object p0
.end method

.method public final a(Landroid/support/b/ae;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, p1}, Landroid/support/b/y;->b(Landroid/support/b/ae;)V

    .line 87
    return-void
.end method

.method public final a(Landroid/support/b/r;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Landroid/support/b/p;->b:Landroid/support/b/r;

    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance v0, Landroid/support/b/p$a;

    invoke-direct {v0, p1}, Landroid/support/b/p$a;-><init>(Landroid/support/b/r;)V

    iput-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    check-cast p2, Landroid/support/b/y;

    iput-object p2, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    goto :goto_0
.end method

.method public final b(Landroid/support/b/ae;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0, p1}, Landroid/support/b/y;->a(Landroid/support/b/ae;)V

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/b/p;->a:Landroid/support/b/y;

    invoke-virtual {v0}, Landroid/support/b/y;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
