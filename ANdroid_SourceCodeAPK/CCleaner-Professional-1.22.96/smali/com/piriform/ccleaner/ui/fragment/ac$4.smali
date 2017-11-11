.class final Lcom/piriform/ccleaner/ui/fragment/ac$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/fragment/ac;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/fragment/ac;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/ac$4;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .prologue
    .line 143
    const v0, 0x7f1000d9

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 144
    :goto_0
    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac$4;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/ac;->g(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac$4;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/fragment/ac;->g()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ac$4;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/fragment/ac;->g(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novoda/notils/d/a;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 148
    :cond_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
