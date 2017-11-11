.class final Lcom/piriform/ccleaner/appmanager/AppManagerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView$a;


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
    .line 67
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->a(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/f;->a(I)Lcom/piriform/ccleaner/appmanager/f;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/appmanager/f;->a(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 71
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->b(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 76
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->c(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 81
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$1;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->d(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    .line 86
    return-void
.end method
