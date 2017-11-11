.class public final Lcom/piriform/ccleaner/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/b$a;
    }
.end annotation


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/piriform/ccleaner/ui/b;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/piriform/ccleaner/ui/b;->a:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 63
    const v0, 0x7f040011

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;JLcom/piriform/ccleaner/ui/b$a;)V
    .locals 2

    .prologue
    .line 18
    const v0, 0x7f040013

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1043
    new-instance v1, Lcom/piriform/ccleaner/ui/b$1;

    invoke-direct {v1, p4, p1}, Lcom/piriform/ccleaner/ui/b$1;-><init>(Lcom/piriform/ccleaner/ui/b$a;Landroid/view/View;)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 24
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    sget-boolean v0, Lcom/piriform/ccleaner/ui/b;->a:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    :cond_0
    return-void
.end method
