.class public final Lcom/piriform/ccleaner/cleaning/advanced/StepValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/firebase/database/h;
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public isFinal:Z

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->isFinal:Z

    .line 20
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->id:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->type:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    const/4 v1, 0x0

    const-string/jumbo v2, "click"

    invoke-direct {v0, v1, p0, v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static clickFinal(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    const/4 v1, 0x1

    const-string/jumbo v2, "click"

    invoke-direct {v0, v1, p0, v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static scroll(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    const/4 v1, 0x0

    const-string/jumbo v2, "scroll"

    invoke-direct {v0, v1, p0, v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
