.class final Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;
.super Landroid/support/v4/view/ViewPager$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/AppManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 1

    .prologue
    .line 437
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$i;-><init>()V

    .line 438
    const/4 v0, -0x1

    iput v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;B)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;-><init>(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V

    return-void
.end method


# virtual methods
.method public final a(IF)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 442
    iget v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;->b:I

    if-eq p1, v0, :cond_0

    .line 443
    iput p1, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;->b:I

    .line 444
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->k(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)Lcom/piriform/ccleaner/appmanager/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/piriform/ccleaner/appmanager/l;->a()V

    .line 445
    invoke-static {p1}, Lcom/piriform/ccleaner/appmanager/f;->a(I)Lcom/piriform/ccleaner/appmanager/f;

    move-result-object v0

    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    invoke-static {v3}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->i(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;

    move-result-object v4

    iget-object v3, p0, Lcom/piriform/ccleaner/appmanager/AppManagerActivity$a;->a:Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    iget-object v3, v3, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->o:Lcom/piriform/ccleaner/s/j;

    invoke-interface {v3}, Lcom/piriform/ccleaner/s/j;->m()Z

    move-result v5

    .line 1060
    sget-object v3, Lcom/piriform/ccleaner/appmanager/f;->c:Lcom/piriform/ccleaner/appmanager/f;

    if-ne v0, v3, :cond_1

    move v3, v1

    .line 1061
    :goto_0
    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->setEnableButtonVisible(Z)V

    .line 1062
    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v4, v1}, Lcom/piriform/ccleaner/appmanager/AppManagerButtonsView;->setDisableButtonVisible(Z)V

    .line 447
    :cond_0
    return-void

    :cond_1
    move v3, v2

    .line 1060
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1061
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1062
    goto :goto_2
.end method
