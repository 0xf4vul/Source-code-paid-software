.class final Lcom/piriform/ccleaner/ui/fragment/ac$1;
.super Lcom/piriform/ccleaner/u/b;
.source "SourceFile"


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
    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/ac$1;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-direct {p0}, Lcom/piriform/ccleaner/u/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac$1;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/ac;->a(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/RadioGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac$1;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/ac;->b(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 53
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac$1;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/ac;->a(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/RadioGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ac$1;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-static {v1}, Lcom/piriform/ccleaner/ui/fragment/ac;->c(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac$1;->a:Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/fragment/ac;->d(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
