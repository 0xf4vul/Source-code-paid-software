.class final Lcom/piriform/ccleaner/appmanager/AppManagerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/appmanager/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/AppManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$4;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$4;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->g(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 123
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$4;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->e(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 124
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$4;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    .line 1021
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/a;->r:Lcom/piriform/ccleaner/ui/f;

    .line 1046
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/f;->a:Landroid/support/v7/widget/Toolbar;

    .line 124
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$4;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->h(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 130
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$4;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->i(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    move-result-object v0

    .line 1118
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->e:Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->b:Landroid/view/View;

    .line 1119
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a(Landroid/view/View;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->f:Landroid/graphics/Rect;

    .line 1120
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b(Landroid/graphics/Rect;)Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;

    move-result-object v1

    .line 2092
    const/4 v2, 0x0

    iput v2, v1, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->a:F

    .line 1121
    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    .line 1122
    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 2097
    iput v2, v1, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b:F

    .line 1123
    invoke-virtual {v1}, Lcom/piriform/ccleaner/appmanager/AnimatingShapeView;->b()V

    .line 1125
    iget-object v1, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a:Landroid/view/View;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/a;->b(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, v0, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->c:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v2}, Lcom/piriform/ccleaner/ui/a;->a(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 131
    return-void
.end method
