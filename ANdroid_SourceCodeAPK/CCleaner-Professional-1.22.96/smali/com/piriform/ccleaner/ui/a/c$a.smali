.class final Lcom/piriform/ccleaner/ui/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/a/c;


# direct methods
.method private constructor <init>(Lcom/piriform/ccleaner/ui/a/c;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/a/c$a;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/piriform/ccleaner/ui/a/c;B)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/ui/a/c$a;-><init>(Lcom/piriform/ccleaner/ui/a/c;)V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$a;->a:Lcom/piriform/ccleaner/ui/a/c;

    new-instance v1, Lcom/piriform/ccleaner/ui/a/c$a$1;

    invoke-direct {v1, p0, p3}, Lcom/piriform/ccleaner/ui/a/c$a$1;-><init>(Lcom/piriform/ccleaner/ui/a/c$a;I)V

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/ui/a/c;->a(Lcom/piriform/ccleaner/ui/a/c;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 192
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/c$a;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/a/c;->d(Lcom/piriform/ccleaner/ui/a/c;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/c$a;->a:Lcom/piriform/ccleaner/ui/a/c;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/a/c;->c(Lcom/piriform/ccleaner/ui/a/c;)Landroid/view/View;

    move-result-object v1

    .line 2662
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)V

    .line 193
    return-void
.end method
