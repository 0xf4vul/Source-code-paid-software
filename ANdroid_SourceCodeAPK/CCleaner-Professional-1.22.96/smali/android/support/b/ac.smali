.class final Landroid/support/b/ac;
.super Landroid/support/b/s;
.source "SourceFile"

# interfaces
.implements Landroid/support/b/ab;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private c:Landroid/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroid/support/b/r;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/b/s;-><init>()V

    .line 29
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    iput-object v0, p0, Landroid/support/b/ac;->c:Landroid/transition/TransitionSet;

    .line 30
    iget-object v0, p0, Landroid/support/b/ac;->c:Landroid/transition/TransitionSet;

    invoke-virtual {p0, p1, v0}, Landroid/support/b/ac;->a(Landroid/support/b/r;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final synthetic a(I)Landroid/support/b/ab;
    .locals 1

    .prologue
    .line 22
    .line 2040
    iget-object v0, p0, Landroid/support/b/ac;->c:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 22
    return-object p0
.end method

.method public final synthetic a(Landroid/support/b/q;)Landroid/support/b/ab;
    .locals 2

    .prologue
    .line 22
    .line 1046
    iget-object v0, p0, Landroid/support/b/ac;->c:Landroid/transition/TransitionSet;

    check-cast p1, Landroid/support/b/s;

    iget-object v1, p1, Landroid/support/b/s;->a:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 22
    return-object p0
.end method
