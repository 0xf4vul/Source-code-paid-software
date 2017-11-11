.class public final Lcom/piriform/ccleaner/ui/fragment/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/ah$a;
    }
.end annotation


# instance fields
.field final a:Z

.field final b:Z

.field final c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Lcom/piriform/ccleaner/ui/fragment/ah$a;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->c:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->g:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    .line 40
    iput-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->a:Z

    .line 41
    iput-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->b:Z

    .line 42
    iput-boolean v2, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->c:Z

    .line 43
    iput-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->d:Z

    .line 44
    iput-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->e:Z

    .line 45
    iput-boolean v2, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->f:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/ui/fragment/ah$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/fragment/ah;-><init>()V

    .line 1063
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->g:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()Lcom/piriform/ccleaner/core/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/piriform/ccleaner/core/d",
            "<",
            "Lcom/piriform/ccleaner/f/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$1;->a:[I

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->g:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/ui/fragment/ah$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled case: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->g:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/fragment/ah$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_0
    new-instance v1, Lcom/piriform/ccleaner/f/j$b;

    invoke-direct {v1}, Lcom/piriform/ccleaner/f/j$b;-><init>()V

    .line 76
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->d:Z

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    .line 91
    sget v0, Lcom/piriform/ccleaner/core/d$a;->b:I

    .line 2018
    iput v0, v1, Lcom/piriform/ccleaner/core/d;->a:I

    .line 93
    :cond_0
    return-object v1

    .line 79
    :pswitch_1
    new-instance v1, Lcom/piriform/ccleaner/f/j$c;

    invoke-direct {v1}, Lcom/piriform/ccleaner/f/j$c;-><init>()V

    .line 80
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->e:Z

    goto :goto_0

    .line 83
    :pswitch_2
    new-instance v1, Lcom/piriform/ccleaner/f/j$a;

    invoke-direct {v1}, Lcom/piriform/ccleaner/f/j$a;-><init>()V

    .line 84
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/ah;->f:Z

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
