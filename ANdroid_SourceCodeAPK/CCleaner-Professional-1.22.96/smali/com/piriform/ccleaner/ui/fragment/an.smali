.class public final Lcom/piriform/ccleaner/ui/fragment/an;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/ui/fragment/an$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/piriform/ccleaner/ui/fragment/an$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/an$a;->b:Lcom/piriform/ccleaner/ui/fragment/an$a;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/an;->e:Lcom/piriform/ccleaner/ui/fragment/an$a;

    .line 23
    iput-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/an;->a:Z

    .line 24
    iput-boolean v2, p0, Lcom/piriform/ccleaner/ui/fragment/an;->b:Z

    .line 25
    iput-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/an;->c:Z

    .line 26
    iput-boolean v2, p0, Lcom/piriform/ccleaner/ui/fragment/an;->d:Z

    .line 27
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/piriform/ccleaner/core/d;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;",
            "Lcom/piriform/ccleaner/core/d",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 38
    if-eqz p2, :cond_0

    .line 39
    sget v0, Lcom/piriform/ccleaner/core/d$a;->b:I

    .line 1018
    iput v0, p1, Lcom/piriform/ccleaner/core/d;->a:I

    .line 41
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/ui/fragment/an$a;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/an;->e:Lcom/piriform/ccleaner/ui/fragment/an$a;

    if-ne v2, p1, :cond_2

    .line 1060
    sget-object v2, Lcom/piriform/ccleaner/ui/fragment/an$1;->a:[I

    iget-object v3, p0, Lcom/piriform/ccleaner/ui/fragment/an;->e:Lcom/piriform/ccleaner/ui/fragment/an$a;

    invoke-virtual {v3}, Lcom/piriform/ccleaner/ui/fragment/an$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1068
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled case: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/piriform/ccleaner/ui/fragment/an;->e:Lcom/piriform/ccleaner/ui/fragment/an$a;

    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/fragment/an$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :pswitch_0
    iget-boolean v2, p0, Lcom/piriform/ccleaner/ui/fragment/an;->c:Z

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/an;->c:Z

    .line 51
    :goto_1
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/fragment/an;->e:Lcom/piriform/ccleaner/ui/fragment/an$a;

    .line 52
    return-void

    :cond_0
    move v0, v1

    .line 1062
    goto :goto_0

    .line 1065
    :pswitch_1
    iget-boolean v2, p0, Lcom/piriform/ccleaner/ui/fragment/an;->d:Z

    if-nez v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/an;->d:Z

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    .line 2055
    :cond_2
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/an;->a:Z

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/an;->c:Z

    .line 2056
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/an;->b:Z

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/fragment/an;->d:Z

    goto :goto_1

    .line 1060
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/an;->e:Lcom/piriform/ccleaner/ui/fragment/an$a;

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/an$a;->a:Lcom/piriform/ccleaner/ui/fragment/an$a;

    if-ne v0, v1, :cond_1

    .line 31
    new-instance v0, Lcom/piriform/ccleaner/core/data/i$a;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/i$a;-><init>()V

    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/an;->c:Z

    invoke-static {p1, v0, v1}, Lcom/piriform/ccleaner/ui/fragment/an;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/d;Z)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/fragment/an;->e:Lcom/piriform/ccleaner/ui/fragment/an$a;

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/an$a;->b:Lcom/piriform/ccleaner/ui/fragment/an$a;

    if-ne v0, v1, :cond_0

    .line 33
    new-instance v0, Lcom/piriform/ccleaner/core/data/i$b;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/i$b;-><init>()V

    iget-boolean v1, p0, Lcom/piriform/ccleaner/ui/fragment/an;->d:Z

    invoke-static {p1, v0, v1}, Lcom/piriform/ccleaner/ui/fragment/an;->a(Ljava/util/List;Lcom/piriform/ccleaner/core/d;Z)V

    goto :goto_0
.end method
