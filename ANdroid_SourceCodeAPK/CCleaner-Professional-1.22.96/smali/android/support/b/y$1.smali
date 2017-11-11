.class final Landroid/support/b/y$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/b/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/h/a;

.field final synthetic b:Landroid/support/b/y;


# direct methods
.method constructor <init>(Landroid/support/b/y;Landroid/support/v4/h/a;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Landroid/support/b/y$1;->b:Landroid/support/b/y;

    iput-object p2, p0, Landroid/support/b/y$1;->a:Landroid/support/v4/h/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/support/b/y$1;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Landroid/support/b/y$1;->b:Landroid/support/b/y;

    iget-object v0, v0, Landroid/support/b/y;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/b/y$1;->b:Landroid/support/b/y;

    iget-object v0, v0, Landroid/support/b/y;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method
