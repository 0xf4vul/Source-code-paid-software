.class final Lcom/piriform/ccleaner/appmanager/i;
.super Landroid/support/v4/view/s;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/piriform/ccleaner/appmanager/h;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/piriform/ccleaner/appmanager/h;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/view/s;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/i;->b:Landroid/content/res/Resources;

    .line 15
    iput-object p2, p0, Lcom/piriform/ccleaner/appmanager/i;->c:Lcom/piriform/ccleaner/appmanager/h;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/i;->c:Lcom/piriform/ccleaner/appmanager/h;

    .line 2024
    iget-object v0, v0, Lcom/piriform/ccleaner/appmanager/h;->a:[Lcom/piriform/ccleaner/appmanager/g;

    aget-object v0, v0, p2

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 30
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/piriform/ccleaner/appmanager/f;->d:I

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/i;->b:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/piriform/ccleaner/appmanager/f;->a(I)Lcom/piriform/ccleaner/appmanager/f;

    move-result-object v1

    .line 1056
    iget v1, v1, Lcom/piriform/ccleaner/appmanager/f;->e:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
