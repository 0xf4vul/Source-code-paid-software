.class final Lcom/piriform/ccleaner/ui/main/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/ui/main/m;->a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/main/m;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/main/m;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/main/m$1;->a:Lcom/piriform/ccleaner/ui/main/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/m$1;->a:Lcom/piriform/ccleaner/ui/main/m;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/main/m;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;

    .line 1871
    iget-object v1, v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->o:Lcom/piriform/ccleaner/n/a;

    .line 1872
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/n/a;->a(Landroid/content/res/Resources;)Lcom/piriform/ccleaner/reminder/a;

    move-result-object v1

    .line 1871
    invoke-static {v1}, Lcom/piriform/ccleaner/reminder/e;->a(Lcom/piriform/ccleaner/reminder/a;)Lcom/piriform/ccleaner/reminder/e;

    move-result-object v1

    .line 1874
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->c()Landroid/support/v4/app/m;

    move-result-object v0

    .line 2069
    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v0

    .line 2070
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/q;->a(Landroid/support/v4/app/h;Ljava/lang/String;)Landroid/support/v4/app/q;

    .line 2071
    invoke-virtual {v0}, Landroid/support/v4/app/q;->b()I

    .line 34
    return-void
.end method
