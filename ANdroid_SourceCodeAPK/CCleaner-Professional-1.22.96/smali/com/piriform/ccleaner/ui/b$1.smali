.class final Lcom/piriform/ccleaner/ui/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/b$a;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/b$a;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/b$1;->a:Lcom/piriform/ccleaner/ui/b$a;

    iput-object p2, p0, Lcom/piriform/ccleaner/ui/b$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/b$1;->a:Lcom/piriform/ccleaner/ui/b$a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/b$a;->a(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
