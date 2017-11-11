.class final Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$4;
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
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$4;->a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$4;->a:Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->b(Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->setVisibility(I)V

    .line 217
    return-void
.end method
