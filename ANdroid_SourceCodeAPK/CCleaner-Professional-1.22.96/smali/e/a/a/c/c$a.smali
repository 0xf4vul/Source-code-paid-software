.class public final enum Le/a/a/c/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Le/a/a/c/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a/a/c/c$a;

.field public static final enum b:Le/a/a/c/c$a;

.field public static final enum c:Le/a/a/c/c$a;

.field public static final enum d:Le/a/a/c/c$a;

.field public static final enum e:Le/a/a/c/c$a;

.field public static final enum f:Le/a/a/c/c$a;

.field private static final synthetic g:[Le/a/a/c/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Le/a/a/c/c$a;

    const-string/jumbo v1, "NULL"

    invoke-direct {v0, v1, v3}, Le/a/a/c/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/c/c$a;->a:Le/a/a/c/c$a;

    new-instance v0, Le/a/a/c/c$a;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v4}, Le/a/a/c/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/c/c$a;->b:Le/a/a/c/c$a;

    new-instance v0, Le/a/a/c/c$a;

    const-string/jumbo v1, "REAL"

    invoke-direct {v0, v1, v5}, Le/a/a/c/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/c/c$a;->c:Le/a/a/c/c$a;

    new-instance v0, Le/a/a/c/c$a;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v6}, Le/a/a/c/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/c/c$a;->d:Le/a/a/c/c$a;

    new-instance v0, Le/a/a/c/c$a;

    const-string/jumbo v1, "BLOB"

    invoke-direct {v0, v1, v7}, Le/a/a/c/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/c/c$a;->e:Le/a/a/c/c$a;

    new-instance v0, Le/a/a/c/c$a;

    const-string/jumbo v1, "NUMERIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Le/a/a/c/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a/a/c/c$a;->f:Le/a/a/c/c$a;

    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [Le/a/a/c/c$a;

    sget-object v1, Le/a/a/c/c$a;->a:Le/a/a/c/c$a;

    aput-object v1, v0, v3

    sget-object v1, Le/a/a/c/c$a;->b:Le/a/a/c/c$a;

    aput-object v1, v0, v4

    sget-object v1, Le/a/a/c/c$a;->c:Le/a/a/c/c$a;

    aput-object v1, v0, v5

    sget-object v1, Le/a/a/c/c$a;->d:Le/a/a/c/c$a;

    aput-object v1, v0, v6

    sget-object v1, Le/a/a/c/c$a;->e:Le/a/a/c/c$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Le/a/a/c/c$a;->f:Le/a/a/c/c$a;

    aput-object v2, v0, v1

    sput-object v0, Le/a/a/c/c$a;->g:[Le/a/a/c/c$a;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Le/a/a/c/c$a;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/a/c/c$a;->valueOf(Ljava/lang/String;)Le/a/a/c/c$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Le/a/a/c/c$a;
    .locals 1

    .prologue
    .line 13
    const-class v0, Le/a/a/c/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Le/a/a/c/c$a;

    return-object v0
.end method

.method public static values()[Le/a/a/c/c$a;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Le/a/a/c/c$a;->g:[Le/a/a/c/c$a;

    invoke-virtual {v0}, [Le/a/a/c/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a/a/c/c$a;

    return-object v0
.end method
