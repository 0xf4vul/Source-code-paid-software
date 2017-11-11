.class public final enum Lcom/piriform/ccleaner/ui/fragment/ah$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/fragment/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/ui/fragment/ah$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/piriform/ccleaner/ui/fragment/ah$a;

.field public static final enum b:Lcom/piriform/ccleaner/ui/fragment/ah$a;

.field public static final enum c:Lcom/piriform/ccleaner/ui/fragment/ah$a;

.field private static final synthetic d:[Lcom/piriform/ccleaner/ui/fragment/ah$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;

    const-string/jumbo v1, "NAME"

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/ui/fragment/ah$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->a:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    .line 22
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;

    const-string/jumbo v1, "PATH"

    invoke-direct {v0, v1, v3}, Lcom/piriform/ccleaner/ui/fragment/ah$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->b:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    .line 23
    new-instance v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;

    const-string/jumbo v1, "FILE_SIZE"

    invoke-direct {v0, v1, v4}, Lcom/piriform/ccleaner/ui/fragment/ah$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->c:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/ui/fragment/ah$a;

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/ah$a;->a:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/ah$a;->b:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/ui/fragment/ah$a;->c:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->d:[Lcom/piriform/ccleaner/ui/fragment/ah$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/a/h;)Lcom/piriform/ccleaner/ui/fragment/ah$a;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/piriform/ccleaner/a/h;->s:Lcom/piriform/ccleaner/a/h;

    if-ne p0, v0, :cond_0

    .line 27
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->b:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    .line 29
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->c:Lcom/piriform/ccleaner/ui/fragment/ah$a;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/ui/fragment/ah$a;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/ui/fragment/ah$a;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/piriform/ccleaner/ui/fragment/ah$a;->d:[Lcom/piriform/ccleaner/ui/fragment/ah$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/ui/fragment/ah$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/ui/fragment/ah$a;

    return-object v0
.end method
