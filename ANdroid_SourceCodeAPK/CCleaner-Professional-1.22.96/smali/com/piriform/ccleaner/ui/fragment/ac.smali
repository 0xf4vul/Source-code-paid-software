.class public final Lcom/piriform/ccleaner/ui/fragment/ac;
.super Landroid/support/v4/app/h;
.source "SourceFile"


# instance fields
.field private a:I

.field private aa:Landroid/widget/RadioButton;

.field private ab:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private ac:Landroid/widget/Button;

.field private ad:Landroid/widget/Button;

.field private final ae:Landroid/text/TextWatcher;

.field private b:Ljava/lang/String;

.field private c:Lcom/piriform/ccleaner/settings/c;

.field private d:Lcom/piriform/ccleaner/ui/fragment/ad;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RadioGroup;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/RadioGroup;

.field private i:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    .line 47
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ac$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/fragment/ac$1;-><init>(Lcom/piriform/ccleaner/ui/fragment/ac;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ae:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/RadioGroup;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->f:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public static a(Lcom/piriform/ccleaner/settings/c;)Lcom/piriform/ccleaner/ui/fragment/ac;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/ac;-><init>()V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string/jumbo v2, "action"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string/jumbo v2, "customFolder"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/ac;->e(Landroid/os/Bundle;)V

    .line 75
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/ac;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ac;

    invoke-direct {v0}, Lcom/piriform/ccleaner/ui/fragment/ac;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string/jumbo v2, "action"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/ac;->e(Landroid/os/Bundle;)V

    .line 66
    return-object v0
.end method

.method static synthetic b(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->i:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic c(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ab:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic d(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->aa:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic e(Lcom/piriform/ccleaner/ui/fragment/ac;)V
    .locals 1

    .prologue
    .line 27
    .line 13231
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->d:Lcom/piriform/ccleaner/ui/fragment/ad;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/fragment/ad;->g()V

    .line 27
    return-void
.end method

.method static synthetic f(Lcom/piriform/ccleaner/ui/fragment/ac;)V
    .locals 8

    .prologue
    .line 27
    .line 14204
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 14205
    packed-switch v0, :pswitch_data_0

    .line 14211
    new-instance v1, Lcom/novoda/notils/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unhandled case: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14207
    :pswitch_0
    const/4 v6, 0x0

    .line 14217
    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->h:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 14218
    packed-switch v0, :pswitch_data_1

    .line 14226
    new-instance v1, Lcom/novoda/notils/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unhandled case: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14209
    :pswitch_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 14220
    :pswitch_2
    sget-object v7, Lcom/piriform/ccleaner/settings/c$a;->a:Lcom/piriform/ccleaner/settings/c$a;

    .line 13238
    :goto_1
    iget v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->a:I

    if-nez v0, :cond_0

    .line 13239
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->b:Ljava/lang/String;

    invoke-static {v0, v6, v7}, Lcom/piriform/ccleaner/settings/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/piriform/ccleaner/settings/c$a;)Lcom/piriform/ccleaner/settings/c;

    move-result-object v0

    .line 13240
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->d:Lcom/piriform/ccleaner/ui/fragment/ad;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/ui/fragment/ad;->a(Lcom/piriform/ccleaner/settings/c;)V

    .line 13241
    :goto_2
    return-void

    .line 14222
    :pswitch_3
    sget-object v7, Lcom/piriform/ccleaner/settings/c$a;->b:Lcom/piriform/ccleaner/settings/c$a;

    goto :goto_1

    .line 14224
    :pswitch_4
    sget-object v7, Lcom/piriform/ccleaner/settings/c$a;->c:Lcom/piriform/ccleaner/settings/c$a;

    goto :goto_1

    .line 13242
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->c:Lcom/piriform/ccleaner/settings/c;

    iget-object v4, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->b:Ljava/lang/String;

    .line 15091
    new-instance v1, Lcom/piriform/ccleaner/settings/c;

    iget-wide v2, v0, Lcom/piriform/ccleaner/settings/c;->a:J

    iget-object v5, v0, Lcom/piriform/ccleaner/settings/c;->c:Lcom/piriform/ccleaner/settings/c$b;

    invoke-direct/range {v1 .. v7}, Lcom/piriform/ccleaner/settings/c;-><init>(JLjava/lang/String;Lcom/piriform/ccleaner/settings/c$b;Ljava/lang/String;Lcom/piriform/ccleaner/settings/c$a;)V

    .line 13243
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->d:Lcom/piriform/ccleaner/ui/fragment/ad;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/fragment/ad;->b(Lcom/piriform/ccleaner/settings/c;)V

    goto :goto_2

    .line 14205
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000d9
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 14218
    :pswitch_data_1
    .packed-switch 0x7f1000dd
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic g(Lcom/piriform/ccleaner/ui/fragment/ac;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->g:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final D_()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/h;->D_()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->d:Lcom/piriform/ccleaner/ui/fragment/ad;

    .line 200
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 94
    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3016
    const v0, 0x7f1000d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2248
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->e:Landroid/widget/TextView;

    .line 4016
    const v0, 0x7f1000dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2249
    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->h:Landroid/widget/RadioGroup;

    .line 5016
    const v0, 0x7f1000d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2250
    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->f:Landroid/widget/RadioGroup;

    .line 6016
    const v0, 0x7f1000db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2251
    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->g:Landroid/widget/EditText;

    .line 7016
    const v0, 0x7f1000d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2252
    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->i:Landroid/widget/RadioButton;

    .line 8016
    const v0, 0x7f1000da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2253
    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->aa:Landroid/widget/RadioButton;

    .line 9016
    const v0, 0x7f1000d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2254
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ac:Landroid/widget/Button;

    .line 10016
    const v0, 0x7f1000d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2255
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ad:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10130
    iget v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->a:I

    if-ne v0, v4, :cond_0

    .line 10131
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->c:Lcom/piriform/ccleaner/settings/c;

    .line 11115
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/c;->d:Ljava/lang/String;

    .line 10132
    if-nez v0, :cond_1

    .line 10133
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 10140
    :cond_0
    :goto_0
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ac$4;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/ui/fragment/ac$4;-><init>(Lcom/piriform/ccleaner/ui/fragment/ac;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ab:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 10151
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ae:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10153
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->f:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ab:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 11157
    iget v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->a:I

    if-ne v0, v4, :cond_2

    .line 11158
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->c:Lcom/piriform/ccleaner/settings/c;

    .line 12125
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/c;->e:Lcom/piriform/ccleaner/settings/c$a;

    .line 11160
    sget-object v2, Lcom/piriform/ccleaner/ui/fragment/ac$5;->a:[I

    invoke-virtual {v0}, Lcom/piriform/ccleaner/settings/c$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 11171
    new-instance v1, Lcom/novoda/notils/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unhandled case: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/piriform/ccleaner/settings/c$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10135
    :cond_1
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->aa:Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 10136
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->g:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11162
    :pswitch_0
    const v0, 0x7f1000dd

    .line 13016
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 11174
    check-cast v0, Landroid/widget/RadioButton;

    .line 11175
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ad:Landroid/widget/Button;

    new-instance v2, Lcom/piriform/ccleaner/ui/fragment/ac$2;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/fragment/ac$2;-><init>(Lcom/piriform/ccleaner/ui/fragment/ac;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13115
    iget v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->a:I

    if-ne v0, v4, :cond_3

    .line 13116
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ac:Landroid/widget/Button;

    const v2, 0x7f08007d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 13121
    :goto_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ac:Landroid/widget/Button;

    new-instance v2, Lcom/piriform/ccleaner/ui/fragment/ac$3;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/fragment/ac$3;-><init>(Lcom/piriform/ccleaner/ui/fragment/ac;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object v1

    .line 11165
    :pswitch_1
    const v0, 0x7f1000de

    .line 11166
    goto :goto_1

    .line 11168
    :pswitch_2
    const v0, 0x7f1000df

    .line 11169
    goto :goto_1

    .line 13118
    :cond_3
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->ac:Landroid/widget/Button;

    const v2, 0x7f08007c

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 11160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a(Landroid/app/Activity;)V

    .line 189
    instance-of v0, p1, Lcom/piriform/ccleaner/ui/fragment/ad;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/novoda/notils/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Activity must implement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/piriform/ccleaner/ui/fragment/ad;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/novoda/notils/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    check-cast p1, Lcom/piriform/ccleaner/ui/fragment/ad;

    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->d:Lcom/piriform/ccleaner/ui/fragment/ad;

    .line 194
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a(Landroid/os/Bundle;)V

    .line 1568
    iget-object v0, p0, Landroid/support/v4/app/h;->p:Landroid/os/Bundle;

    .line 83
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->a:I

    .line 84
    iget v1, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->a:I

    if-nez v1, :cond_0

    .line 85
    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->b:Ljava/lang/String;

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string/jumbo v1, "customFolder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/settings/c;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->c:Lcom/piriform/ccleaner/settings/c;

    .line 88
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->c:Lcom/piriform/ccleaner/settings/c;

    .line 2099
    iget-object v0, v0, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/fragment/ac;->g()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ac;->g:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/novoda/notils/d/a;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 182
    invoke-super {p0}, Landroid/support/v4/app/h;->d()V

    .line 183
    return-void
.end method
