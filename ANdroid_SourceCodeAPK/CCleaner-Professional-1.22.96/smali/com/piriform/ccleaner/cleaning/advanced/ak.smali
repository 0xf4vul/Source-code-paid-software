.class public final Lcom/piriform/ccleaner/cleaning/advanced/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/cleaning/advanced/ak$a;
    }
.end annotation


# instance fields
.field private bottomSheetDialog:Landroid/support/design/widget/c;

.field private listener:Lcom/piriform/ccleaner/cleaning/advanced/ak$a;


# direct methods
.method constructor <init>(Landroid/support/design/widget/c;Lcom/piriform/ccleaner/cleaning/advanced/ak$a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak;->bottomSheetDialog:Landroid/support/design/widget/c;

    .line 21
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak;->listener:Lcom/piriform/ccleaner/cleaning/advanced/ak$a;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/piriform/ccleaner/cleaning/advanced/ak;)Lcom/piriform/ccleaner/cleaning/advanced/ak$a;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak;->listener:Lcom/piriform/ccleaner/cleaning/advanced/ak$a;

    return-object v0
.end method

.method public static from(Landroid/content/Context;Lcom/piriform/ccleaner/cleaning/advanced/ak$a;)Lcom/piriform/ccleaner/cleaning/advanced/ak;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Landroid/support/design/widget/c;

    invoke-direct {v0, p0}, Landroid/support/design/widget/c;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/ak;

    invoke-direct {v1, v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ak;-><init>(Landroid/support/design/widget/c;Lcom/piriform/ccleaner/cleaning/advanced/ak$a;)V

    return-object v1
.end method


# virtual methods
.method public final hide()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak;->bottomSheetDialog:Landroid/support/design/widget/c;

    invoke-virtual {v0}, Landroid/support/design/widget/c;->hide()V

    .line 39
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak;->bottomSheetDialog:Landroid/support/design/widget/c;

    const v1, 0x7f030030

    invoke-virtual {v0, v1}, Landroid/support/design/widget/c;->setContentView(I)V

    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak;->bottomSheetDialog:Landroid/support/design/widget/c;

    const v1, 0x7f1000b6

    invoke-virtual {v0, v1}, Landroid/support/design/widget/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/ak$1;

    invoke-direct {v1, p0}, Lcom/piriform/ccleaner/cleaning/advanced/ak$1;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/ak;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/ak;->bottomSheetDialog:Landroid/support/design/widget/c;

    invoke-virtual {v0}, Landroid/support/design/widget/c;->show()V

    .line 35
    return-void
.end method
