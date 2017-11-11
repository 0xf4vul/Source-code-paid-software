.class final Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$2;->b:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    iput-object p2, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$2;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 111
    return-void
.end method
