.class public final enum Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

.field public static final enum FAILURE:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

.field public static final enum INTERRUPT:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

.field public static final enum SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    .line 53
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    const-string/jumbo v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->FAILURE:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    .line 54
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    const-string/jumbo v1, "INTERRUPT"

    invoke-direct {v0, v1, v4}, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->INTERRUPT:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->SUCCESS:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->FAILURE:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->INTERRUPT:Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->$VALUES:[Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    return-object v0
.end method

.method public static values()[Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->$VALUES:[Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    invoke-virtual {v0}, [Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/piriform/ccleaner/cleaning/advanced/AdvancedCacheCleaningService$a;

    return-object v0
.end method
